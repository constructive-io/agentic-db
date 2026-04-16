-- Deploy: schemas/agentic_db_app_public/tables/skill_tools/alterations/alt0000015967
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_tools/table
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/indexes/calendar_attendees_contact_id_idx


ALTER TABLE agentic_db_app_public.skill_tools 
  DISABLE ROW LEVEL SECURITY;

