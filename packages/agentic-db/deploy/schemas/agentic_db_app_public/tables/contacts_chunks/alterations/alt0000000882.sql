-- Deploy: schemas/agentic_db_app_public/tables/contacts_chunks/alterations/alt0000000882
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/table


COMMENT ON TABLE "agentic_db_app_public".contacts_chunks IS E'@@chunksOf {"parent_fk": "contacts_id", "parent_table": "contacts"}';

