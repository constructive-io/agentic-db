-- Revert: schemas/agentic_db_app_public/tables/runtime_events/columns/payload/alterations/alt0000013312


ALTER TABLE agentic_db_app_public.runtime_events 
  ALTER COLUMN payload DROP NOT NULL;


