-- Deploy: schemas/agentic_db_users_public/tables/role_types/fixtures/fix0000000857
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/role_types/table


INSERT INTO "agentic_db_users_public".role_types (
  id,
  name
)
VALUES
  (1, 'User'),
  (2, 'Organization');

