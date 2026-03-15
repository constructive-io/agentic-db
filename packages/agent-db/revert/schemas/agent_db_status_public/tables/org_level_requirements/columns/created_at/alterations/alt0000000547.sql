-- Revert: schemas/agent_db_status_public/tables/org_level_requirements/columns/created_at/alterations/alt0000000547


ALTER TABLE agent_db_status_public.org_level_requirements 
  ALTER COLUMN created_at DROP DEFAULT;


