-- Revert: schemas/agent_db_status_public/tables/org_level_requirements/columns/updated_at/alterations/alt0000000548


ALTER TABLE agent_db_status_public.org_level_requirements 
  ALTER COLUMN updated_at DROP DEFAULT;


