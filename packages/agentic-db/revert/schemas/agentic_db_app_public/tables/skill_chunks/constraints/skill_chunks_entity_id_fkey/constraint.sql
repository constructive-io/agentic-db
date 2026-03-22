-- Revert: schemas/agentic_db_app_public/tables/skill_chunks/constraints/skill_chunks_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".skill_chunks 
  DROP CONSTRAINT skill_chunks_entity_id_fkey;


