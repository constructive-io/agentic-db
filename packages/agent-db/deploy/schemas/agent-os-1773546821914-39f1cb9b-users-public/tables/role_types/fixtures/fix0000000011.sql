-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/role_types/fixtures/fix0000000011
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/role_types/table


INSERT INTO "agent-os-1773546821914-39f1cb9b-users-public".role_types (
  id,
  name
)
VALUES
  (1, 'User'),
  (2, 'Organization');

