-- Deploy: schemas/agentic_db_app_public/tables/skills_chunks/columns/updated_at/alterations/alt0000003462
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills_chunks/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE agentic_db_app_public.skills_chunks 
  ALTER COLUMN updated_at SET DEFAULT now();

