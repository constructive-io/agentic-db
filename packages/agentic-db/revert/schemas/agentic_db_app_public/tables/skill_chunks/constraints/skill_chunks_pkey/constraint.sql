-- Revert: schemas/agentic_db_app_public/tables/skill_chunks/constraints/skill_chunks_pkey/constraint


ALTER TABLE agentic_db_app_public.skill_chunks 
  DROP CONSTRAINT skill_chunks_pkey;


