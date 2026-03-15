-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/role_types/fixtures/fix0000000011
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/role_types/table


INSERT INTO "agent-os-1773550873753-b6c4a3e1-users-public".role_types (
  id,
  name
)
VALUES
  (1, 'User'),
  (2, 'Organization');

