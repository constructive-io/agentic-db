-- Revert: schemas/agent_db_auth_private/tables/sessions/triggers/timestamps_tg


DROP TRIGGER timestamps_tg ON "agent_db_auth_private".sessions;


