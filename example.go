package main

import (
	"context"
	"database/sql"

	"github.com/heroiclabs/nakama/runtime"
)

func InitModule(ctx context.Context, logger runtime.Logger, db *sql.DB, nk runtime.NakamaModule, initializer runtime.Initializer) error {
	logger.Info("module loaded")
	return nil
}
