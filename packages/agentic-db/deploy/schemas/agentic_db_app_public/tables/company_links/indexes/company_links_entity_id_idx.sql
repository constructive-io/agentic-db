-- Deploy: schemas/agentic_db_app_public/tables/company_links/indexes/company_links_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_links/table
-- requires: schemas/agentic_db_app_public/tables/company_links/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/contact_links/columns/embedding_stale/alterations/alt0000005742


CREATE INDEX company_links_entity_id_idx ON agentic_db_app_public.company_links USING BTREE ( entity_id );

