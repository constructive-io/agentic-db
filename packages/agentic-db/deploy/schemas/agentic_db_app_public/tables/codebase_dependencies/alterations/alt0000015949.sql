-- Deploy: schemas/agentic_db_app_public/tables/codebase_dependencies/alterations/alt0000015949
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/indexes/calendar_attendees_contact_id_idx


ALTER TABLE agentic_db_app_public.codebase_dependencies 
  DISABLE ROW LEVEL SECURITY;

