-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/claimed_invites/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/claimed_invites/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773547105079-c748b4c3-invites-public".claimed_invites
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

