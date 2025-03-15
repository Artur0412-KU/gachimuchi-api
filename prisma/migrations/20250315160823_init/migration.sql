/*
  Warnings:

  - The primary key for the `Gallery` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `dalleryId` on the `Gallery` table. All the data in the column will be lost.
  - Added the required column `characterId` to the `Gallery` table without a default value. This is not possible if the table is not empty.
  - Added the required column `characterId` to the `Meme` table without a default value. This is not possible if the table is not empty.
  - Added the required column `movieId` to the `Meme` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Gallery" DROP CONSTRAINT "Gallery_pkey",
DROP COLUMN "dalleryId",
ADD COLUMN     "characterId" INTEGER NOT NULL,
ADD COLUMN     "galleryId" SERIAL NOT NULL,
ADD CONSTRAINT "Gallery_pkey" PRIMARY KEY ("galleryId");

-- AlterTable
ALTER TABLE "Meme" ADD COLUMN     "characterId" INTEGER NOT NULL,
ADD COLUMN     "movieId" INTEGER NOT NULL;

-- CreateTable
CREATE TABLE "CharacterMovie" (
    "id" SERIAL NOT NULL,
    "characterId" INTEGER NOT NULL,
    "movieId" INTEGER NOT NULL,

    CONSTRAINT "CharacterMovie_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Meme" ADD CONSTRAINT "Meme_characterId_fkey" FOREIGN KEY ("characterId") REFERENCES "Character"("characterId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Meme" ADD CONSTRAINT "Meme_movieId_fkey" FOREIGN KEY ("movieId") REFERENCES "Movie"("movieId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CharacterMovie" ADD CONSTRAINT "CharacterMovie_characterId_fkey" FOREIGN KEY ("characterId") REFERENCES "Character"("characterId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CharacterMovie" ADD CONSTRAINT "CharacterMovie_movieId_fkey" FOREIGN KEY ("movieId") REFERENCES "Movie"("movieId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Gallery" ADD CONSTRAINT "Gallery_characterId_fkey" FOREIGN KEY ("characterId") REFERENCES "Character"("characterId") ON DELETE RESTRICT ON UPDATE CASCADE;
