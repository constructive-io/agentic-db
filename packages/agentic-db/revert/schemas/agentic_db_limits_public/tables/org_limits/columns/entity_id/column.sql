-- Revert: schemas/agentic_db_limits_public/tables/org_limits/columns/entity_id/column


ALTER TABLE agentic_db_limits_public.org_limits 
  DROP COLUMN entity_id RESTRICT;


