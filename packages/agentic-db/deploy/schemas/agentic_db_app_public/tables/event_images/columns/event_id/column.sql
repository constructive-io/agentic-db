-- Deploy: schemas/agentic_db_app_public/tables/event_images/columns/event_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_images/table


ALTER TABLE agentic_db_app_public.event_images 
  ADD COLUMN event_id uuid;

