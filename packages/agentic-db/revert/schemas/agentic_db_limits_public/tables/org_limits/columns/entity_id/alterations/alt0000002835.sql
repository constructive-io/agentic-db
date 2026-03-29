-- Revert: schemas/agentic_db_limits_public/tables/org_limits/columns/entity_id/alterations/alt0000002835


ALTER TABLE agentic_db_limits_public.org_limits 
  ALTER COLUMN entity_id DROP NOT NULL;


