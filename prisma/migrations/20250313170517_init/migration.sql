-- CreateTable
CREATE TABLE "Meme" (
    "memeId" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "image_url" TEXT NOT NULL,
    "link" TEXT NOT NULL,

    CONSTRAINT "Meme_pkey" PRIMARY KEY ("memeId")
);
