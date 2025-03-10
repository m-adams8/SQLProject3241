import pandas as pd

def generate_insert_statements(excel_file, output_file):
    # Read Excel file
    df = pd.read_excel(excel_file, header=1)  # Adjusting for header row starting from index 1
    
    # Drop rows where 'Publisher' is NaN
    df = df.dropna(subset=['Publisher'])
    
    # Open output file for writing
    with open(output_file, 'w') as file:
        
        # Generate a single insert statement for Publisher table
        publishers = df['Publisher'].dropna().unique()
        publisher_statements = []
        for i, publisher in enumerate(publishers, start=1):
            # Escape single quotes by replacing them with double single quotes
            publisher = str(publisher).replace("'", "''")
            publisher_statements.append(f"({i}, '{publisher}', '', '', '')")
        file.write("-- Insert data into Publisher table\n")
        file.write("INSERT INTO Publisher (Publisher_ID, Name, Email, Address, Phone) VALUES " + ",\n".join(publisher_statements) + ";\n\n")

        # Generate a single insert statement for Author table
        authors = df['Author(s)'].str.split(',').explode().dropna().unique()
        author_statements = []
        for i, author in enumerate(authors, start=1):
            author = str(author).strip().replace("'", "''")  # Handle single quote issue
            names = author.split()
            first_name = names[0] if len(names) > 0 else ''
            middle_name = names[1] if len(names) > 2 else None  # Set middle name to None if not present (only if there are more than 2 names)
            last_name = names[-1] if len(names) > 1 else names[0]  # Last name is the last part, or the only name if no middle name
            
            # Use conditional logic to properly handle the middle name in SQL insert
            if middle_name:
                author_statements.append(f"({i}, '{first_name}', '{middle_name}', '{last_name}')")
            else:
                author_statements.append(f"({i}, '{first_name}', NULL, '{last_name}')")

        file.write("-- Insert data into Author table\n")
        file.write("INSERT INTO Author (Author_ID, F_Name, M_Name, L_Name) VALUES " + ",\n".join(author_statements) + ";\n\n")

        # Generate insert statements for Book table
        book_statements = []
        for index, row in df.iterrows():
            isbn = row['ISBN']
            title = str(row['Title']).replace("'", "''") if pd.notna(row['Title']) else ""
            price = str(row['Price']).replace('$', '').replace(',', '') if isinstance(row['Price'], str) else row['Price']
            category = row['Category'] if pd.notna(row['Category']) else ''
            
            # Check if 'Year' is NaN, and handle it accordingly
            year = int(row['Year']) if pd.notna(row['Year']) and isinstance(row['Year'], (int, float)) else 0
            stock = 10  # Assuming a default stock value; adjust as needed
            
            # Get the publisher ID from the 'Publisher' list
            publisher_id = publishers.tolist().index(row['Publisher']) + 1

            book_statements.append(
                f"({isbn}, '{title}', {price}, '{category}', {year}, {stock}, {publisher_id})")
        file.write("-- Insert data into Book table\n")
        file.write("INSERT INTO Book (ISBN, Title, Price, Category, Year, Stock, Publisher_ID) VALUES " + ",\n".join(book_statements) + ";\n\n")

        # Generate insert statements for Written_By table
        written_by_statements = []
        for index, row in df.iterrows():
            isbn = row['ISBN']
            author_names = row['Author(s)'].split(',') if pd.notna(row['Author(s)']) else []
            for author_name in author_names:
                author_name = author_name.strip()
                # Find corresponding Author_ID
                author_id = next((i + 1 for i, a in enumerate(authors) if a.strip() == author_name), None)
                if author_id:
                    written_by_statements.append(f"({isbn}, {author_id})")
        file.write("-- Insert data into Written_By table\n")
        file.write("INSERT INTO Written_By (ISBN, Author_ID) VALUES " + ",\n".join(written_by_statements) + ";\n\n")

    print(f"Insert statements generated and saved to {output_file}")

# Usage example
excel_file = 'Proj Data XLS.xls'  # Adjust this path to your actual file
output_file = 'insert_statements.sql'  # Output file name
generate_insert_statements(excel_file, output_file)
