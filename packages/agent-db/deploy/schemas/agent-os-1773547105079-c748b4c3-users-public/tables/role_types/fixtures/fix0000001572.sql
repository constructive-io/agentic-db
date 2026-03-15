-- Deploy: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/role_types/fixtures/fix0000001572
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/role_types/table


INSERT INTO "agent-os-1773547105079-c748b4c3-users-public".role_types (
  id,
  name
)
VALUES
  (1, 'User'),
  (2, 'Organization');

