-- CreateTable
CREATE TABLE "Movie" (
    "movieId" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "year_of_production" TIMESTAMP(3) NOT NULL,
    "studio_of_production" TEXT,
    "genre" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "link" TEXT NOT NULL,

    CONSTRAINT "Movie_pkey" PRIMARY KEY ("movieId")
);
