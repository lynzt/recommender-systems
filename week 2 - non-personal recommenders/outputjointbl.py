#!/usr/bin/python
import csv

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

def insertRec():
    self._cur.execute(
        "insert into user_movie_ratings (user_id, movie_id, rating) VALUES (%s, %s, %s)" , [cid]
    )
    row = self._cur.fetchone()
    return reg(self._cur, row)


def main():
    rowCount = 0
    with open('A1Ratings.csv', 'rU') as csvfile:
        rows = csv.reader(csvfile, delimiter=',', quotechar='\"')
        for row in rows:
            rowCount += 1
            if (rowCount == 1):
                movies = getMovieIds(row)
            else:
                getUserRating(row, movies)

if __name__ == '__main__':
    main()

