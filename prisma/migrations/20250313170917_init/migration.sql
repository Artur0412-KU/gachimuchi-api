-- CreateTable
CREATE TABLE "Gallery" (
    "dalleryId" SERIAL NOT NULL,
    "picture_url" TEXT NOT NULL,

    CONSTRAINT "Gallery_pkey" PRIMARY KEY ("dalleryId")
);
