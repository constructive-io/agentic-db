-- Deploy: schemas/agentic_db_app_public/tables/rule_chunks/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


GRANT SELECT ON agentic_db_app_public.rule_chunks TO authenticated;

