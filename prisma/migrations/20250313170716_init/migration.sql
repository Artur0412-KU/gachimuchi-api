-- CreateTable
CREATE TABLE "Character" (
    "characterId" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "surname" TEXT NOT NULL,
    "image_url" TEXT NOT NULL,
    "nickname" TEXT,
    "date_of_birth" TIMESTAMP(3) NOT NULL,
    "date_of_death" TIMESTAMP(3),
    "bio" TEXT NOT NULL,

    CONSTRAINT "Character_pkey" PRIMARY KEY ("characterId")
);
