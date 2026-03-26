-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_links/alterations/alt0000001964
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_url_idx


COMMENT ON TABLE "agentic_db_app_public".autonomy_record_links IS E'@behavior +manyToMany';

