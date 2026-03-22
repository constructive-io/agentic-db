-- Revert: schemas/agentic_db_app_public/tables/note_chunks/columns/updated_at/alterations/alt0000001944




ALTER TABLE "agentic_db_app_public".note_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



