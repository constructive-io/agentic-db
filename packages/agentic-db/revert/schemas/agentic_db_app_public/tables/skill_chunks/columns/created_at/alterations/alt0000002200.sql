-- Revert: schemas/agentic_db_app_public/tables/skill_chunks/columns/created_at/alterations/alt0000002200


ALTER TABLE "agentic_db_app_public".skill_chunks 
  ALTER COLUMN created_at DROP NOT NULL;


