-- Deploy: schemas/agentic_db_app_public/tables/emails_chunks/alterations/alt0000001858
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


COMMENT ON TABLE "agentic_db_app_public".emails_chunks IS E'@@chunksOf {"parent_fk": "emails_id", "parent_table": "emails"}';

