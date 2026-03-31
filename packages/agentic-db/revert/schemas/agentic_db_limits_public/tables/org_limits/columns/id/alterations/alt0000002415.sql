-- Revert: schemas/agentic_db_limits_public/tables/org_limits/columns/id/alterations/alt0000002415


ALTER TABLE agentic_db_limits_public.org_limits 
  ALTER COLUMN id DROP NOT NULL;


