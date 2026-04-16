-- Deploy: schemas/agentic_db_app_public/tables/agent_prompts/alterations/alt0000000762
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/table
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/indexes/calendar_attendees_contact_id_idx


ALTER TABLE agentic_db_app_public.agent_prompts 
  DISABLE ROW LEVEL SECURITY;

