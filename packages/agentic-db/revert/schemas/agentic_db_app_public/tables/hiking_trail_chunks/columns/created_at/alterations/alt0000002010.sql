-- Revert: schemas/agentic_db_app_public/tables/hiking_trail_chunks/columns/created_at/alterations/alt0000002010


ALTER TABLE "agentic_db_app_public".hiking_trail_chunks 
  ALTER COLUMN created_at DROP NOT NULL;


