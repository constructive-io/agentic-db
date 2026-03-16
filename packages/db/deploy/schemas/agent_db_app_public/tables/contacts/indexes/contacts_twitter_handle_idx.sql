-- Deploy: schemas/agent_db_app_public/tables/contacts/indexes/contacts_twitter_handle_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/prompts/indexes/prompts_is_active_idx
-- requires: schemas/agent_db_app_public/tables/contacts/columns/twitter_handle/column


CREATE INDEX contacts_twitter_handle_idx ON "agent_db_app_public".contacts USING BTREE ( twitter_handle );

