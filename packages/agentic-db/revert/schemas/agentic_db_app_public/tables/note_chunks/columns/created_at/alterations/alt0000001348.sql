-- Revert: schemas/agentic_db_app_public/tables/note_chunks/columns/created_at/alterations/alt0000001348




ALTER TABLE "agentic_db_app_public".note_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



