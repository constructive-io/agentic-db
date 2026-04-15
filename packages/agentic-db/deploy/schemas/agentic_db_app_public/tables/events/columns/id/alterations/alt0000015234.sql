-- Deploy: schemas/agentic_db_app_public/tables/events/columns/id/alterations/alt0000015234
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/events/columns/id/column
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.events 
  ALTER COLUMN id SET NOT NULL;

