-- Deploy: schemas/agentic_db_app_public/tables/venues_chunks/alterations/alt0000000984
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/table


COMMENT ON TABLE "agentic_db_app_public".venues_chunks IS E'@@chunksOf {"parent_fk": "venues_id", "parent_table": "venues"}';

