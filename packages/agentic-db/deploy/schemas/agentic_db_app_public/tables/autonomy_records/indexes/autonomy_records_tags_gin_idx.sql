-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/policies/auth_del_entity_membership/policy


CREATE INDEX autonomy_records_tags_gin_idx ON agentic_db_app_public.autonomy_records USING GIN ( tags );

