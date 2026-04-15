-- Deploy: schemas/agentic_db_app_public/tables/event_links/columns/created_at/alterations/alt0000015350
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_links/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/event_links/columns/created_at/column


ALTER TABLE agentic_db_app_public.event_links 
  ALTER COLUMN created_at SET NOT NULL;

