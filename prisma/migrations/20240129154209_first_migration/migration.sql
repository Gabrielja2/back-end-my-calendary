-- CreateTable
CREATE TABLE `user` (
    `id` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `username` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NULL,

    UNIQUE INDEX `user_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `schedule` (
    `id` VARCHAR(191) NOT NULL,
    `user_id` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `start_date` DATETIME(3) NOT NULL,
    `end_date` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `schedule` ADD CONSTRAINT `schedule_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
