-- Deploy: schemas/agent_db_users_public/tables/role_types/fixtures/fix0000003229
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/role_types/table


INSERT INTO "agent_db_users_public".role_types (
  id,
  name
)
VALUES
  (1, 'User'),
  (2, 'Organization');

