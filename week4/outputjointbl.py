#!/usr/bin/python
import csv
import xlrd

# file_name = 'Assignment 3.xls'
file_name = '/vagrant/week4/assignment3.xls'

def getMovieIds(titles):
    movies = {}
    counter = 0
    for title in titles:
        if counter == 0:
            counter += 1
            next
        else:
            movieId = title.split(':', 1)
            movies[counter] = movieId[0]
            counter += 1

    return movies

def getUserRating(ratings, movies):
    counter = 0
    for rating in ratings:
        if counter == 0:
            userId = rating
        else:
            if rating != '':
                movieId = movies[counter]
                print 'insert into user_movie_ratings (user_id, movie_id, rating) VALUES (%s, %s, %s);' % (userId, movieId, rating)

        counter += 1

    return movies

# def insertRec():
#     self._cur.execute(
#         "insert into user_movie_ratings (user_id, movie_id, rating) VALUES (%s, %s, %s)" , [cid]
#     )
#     row = self._cur.fetchone()
#     return reg(self._cur, row)


def main():

        # Open the workbook
    xl_workbook = xlrd.open_workbook(file_name)

    # List sheet names, and pull a sheet by name
    #
    sheet_names = xl_workbook.sheet_names()
    print('Sheet Names', sheet_names)

    xl_sheet = xl_workbook.sheet_by_name(sheet_names[0])

    # Or grab the first sheet by index
    #  (sheets are zero-indexed)
    #
    xl_sheet = xl_workbook.sheet_by_index(0)
    print ('Sheet name: %s' % xl_sheet.name)

    # Pull the first row by index
    #  (rows/columns are also zero-indexed)
    #
    row = xl_sheet.row(0)  # 1st row

    # Print 1st row values and types
    #
    from xlrd.sheet import ctype_text

    print('(Column #) type:value')
    for idx, cell_obj in enumerate(row):
        cell_type_str = ctype_text.get(cell_obj.ctype, 'unknown type')
        print('(%s) %s %s' % (idx, cell_type_str, cell_obj.value))

    # Print all values, iterating through rows and columns
    #
    num_cols = xl_sheet.ncols   # Number of columns
    for row_idx in range(0, xl_sheet.nrows):    # Iterate through rows
        print ('-'*40)
        print ('Row: %s' % row_idx)   # Print row number
        for col_idx in range(0, num_cols):  # Iterate through columns
            cell_obj = xl_sheet.cell(row_idx, col_idx)  # Get cell object by row, col
            print ('Column: [%s] cell_obj: [%s]' % (col_idx, cell_obj))



    # rowCount = 0
    # with open(file_name, 'rU') as csvfile:
    #     rows = csv.reader(csvfile, delimiter=',', quotechar='\"')
    #
    #     xl_sheet = xl_workbook.sheet_by_index(0)
    #     print ('Sheet name: %s' % xl_sheet.name)
    #
    #     for row in rows:
    #         rowCount += 1
    #         if (rowCount == 1):
    #             movies = getMovieIds(row)
    #         else:
    #             getUserRating(row, movies)

if __name__ == '__main__':
    main()

