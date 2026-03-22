-- Deploy: schemas/agentic_db_app_public/tables/contact_companies/columns/id/alterations/alt0000005820
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_companies/table
-- requires: schemas/agentic_db_app_public/tables/contact_companies/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/indexes/interaction_chunks_interaction_id_idx



ALTER TABLE agentic_db_app_public.contact_companies 
    ALTER COLUMN id SET DEFAULT uuidv7();

