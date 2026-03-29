-- Revert: schemas/agentic_db_status_public/tables/org_steps/columns/entity_id/alterations/alt0000009996


ALTER TABLE agentic_db_status_public.org_steps 
  ALTER COLUMN entity_id DROP NOT NULL;


