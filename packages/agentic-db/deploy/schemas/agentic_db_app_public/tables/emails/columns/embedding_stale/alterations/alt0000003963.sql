-- Deploy: schemas/agentic_db_app_public/tables/emails/columns/embedding_stale/alterations/alt0000003963
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/emails/columns/embedding_stale/column



ALTER TABLE agentic_db_app_public.emails 
    ALTER COLUMN embedding_stale SET DEFAULT true;

