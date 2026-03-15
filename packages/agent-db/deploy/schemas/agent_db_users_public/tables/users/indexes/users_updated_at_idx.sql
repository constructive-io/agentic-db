-- Deploy: schemas/agent_db_users_public/tables/users/indexes/users_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_users_public/tables/users/columns/updated_at/column


CREATE INDEX users_updated_at_idx ON "agent_db_users_public".users ( updated_at );

