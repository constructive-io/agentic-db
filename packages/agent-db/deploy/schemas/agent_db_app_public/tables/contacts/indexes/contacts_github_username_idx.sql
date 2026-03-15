-- Deploy: schemas/agent_db_app_public/tables/contacts/indexes/contacts_github_username_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/github_username/column
-- requires: schemas/agent_db_app_public/tables/contacts/indexes/contacts_twitter_handle_idx


CREATE INDEX contacts_github_username_idx ON agent_db_app_public.contacts USING BTREE ( github_username );

