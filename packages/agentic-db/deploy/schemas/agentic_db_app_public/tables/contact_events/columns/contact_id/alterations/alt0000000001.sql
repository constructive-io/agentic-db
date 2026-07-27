-- Deploy: schemas/agentic_db_app_public/tables/contact_events/columns/contact_id/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_events/table
-- requires: schemas/agentic_db_app_public/tables/contact_events/columns/contact_id/column


ALTER TABLE agentic_db_app_public.contact_events 
  ALTER COLUMN contact_id SET NOT NULL;

