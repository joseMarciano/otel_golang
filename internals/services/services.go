package services

import (
	"github.com/joseMarciano/goexpert_otel/internals"
	"go.opentelemetry.io/otel/trace"
)

type BaseHttpService struct {
	Client internals.HTTPClient
	Tracer trace.Tracer
}
