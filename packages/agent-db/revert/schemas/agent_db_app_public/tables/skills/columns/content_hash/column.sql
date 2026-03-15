-- Revert: schemas/agent_db_app_public/tables/skills/columns/content_hash/column


ALTER TABLE agent_db_app_public.skills 
  DROP COLUMN content_hash RESTRICT;


