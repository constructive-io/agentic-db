-- Revert: schemas/agentic_db_app_public/tables/skill_chunks/columns/entity_id/alterations/alt0000002062


ALTER TABLE "agentic_db_app_public".skill_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


