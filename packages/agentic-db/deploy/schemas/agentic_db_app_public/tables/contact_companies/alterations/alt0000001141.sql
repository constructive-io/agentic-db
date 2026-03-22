-- Deploy: schemas/agentic_db_app_public/tables/contact_companies/alterations/alt0000001141
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_companies/table
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/indexes/interaction_chunks_interaction_id_idx


ALTER TABLE "agentic_db_app_public".contact_companies 
  DISABLE ROW LEVEL SECURITY;

