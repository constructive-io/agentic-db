-- Revert: schemas/agentic_db_app_public/tables/skills_chunks/constraints/skills_chunks_skills_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".skills_chunks 
  DROP CONSTRAINT skills_chunks_skills_id_fkey;


