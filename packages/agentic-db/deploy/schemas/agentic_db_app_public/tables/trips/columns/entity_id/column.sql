-- Deploy: schemas/agentic_db_app_public/tables/trips/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/notes/column


ALTER TABLE agentic_db_app_public.trips 
  ADD COLUMN entity_id uuid;

