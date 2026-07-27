-- Deploy: schemas/agentic_db_app_public/tables/emails/columns/cc/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table


ALTER TABLE agentic_db_app_public.emails 
  ADD COLUMN cc jsonb;

