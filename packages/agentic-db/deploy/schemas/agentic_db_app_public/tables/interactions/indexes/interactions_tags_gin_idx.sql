-- Deploy: schemas/agentic_db_app_public/tables/interactions/indexes/interactions_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/tags/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX interactions_tags_gin_idx ON agentic_db_app_public.interactions USING GIN ( tags );

