-- Deploy: schemas/agentic_db_app_public/tables/emails_chunks/alterations/alt0000011272
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


ALTER TABLE agentic_db_app_public.emails_chunks 
  DISABLE ROW LEVEL SECURITY;

