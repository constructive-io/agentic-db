-- Deploy: schemas/agentic_db_app_public/tables/contact_notes/columns/note_id/alterations/alt0000013634
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_notes/table
-- requires: schemas/agentic_db_app_public/tables/contact_notes/columns/note_id/column
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/indexes/agent_prompts_prompt_id_idx


ALTER TABLE agentic_db_app_public.contact_notes 
  ALTER COLUMN note_id SET NOT NULL;

